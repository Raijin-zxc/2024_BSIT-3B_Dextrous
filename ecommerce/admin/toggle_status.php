<?php
include 'includes/session.php';

if(isset($_POST['toggle_status'])){
    $id = $_POST['id'];
    $current_status = $_POST['current_status'];

    // Toggle status
    $new_status = $current_status == 1 ? 0 : 1;

    $conn = $pdo->open();

    try{
        $stmt = $conn->prepare("UPDATE products SET status_id=:status_id WHERE id=:id");
        $stmt->execute(['status_id'=>$new_status, 'id'=>$id]);

        $_SESSION['success'] = 'Product status updated successfully';
    }
    catch(PDOException $e){
        $_SESSION['error'] = $e->getMessage();
    }

    $pdo->close();
}
?>
