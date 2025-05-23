<?php
require_once 'db.php';
$query = $conn->query("SELECT * FROM villains");
$villains = $query->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Villanos de DC Comics</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #1a1a1a;
            color: #f5f5f5;
        }

        h1 {
            text-align: center;
            margin-top: 2rem;
            color: #ff3d00;
            animation: fadeInDown 1s ease-out;
            text-shadow: 0 0 10px #ff3d00, 0 0 20px #ff3d00;
        }

        .card {
            background-color: #2b2b2b;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(255, 61, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: fadeInUp 0.8s ease forwards;
            color: #f0f0f0;
        }

        .card:hover {
            transform: scale(1.04);
            box-shadow: 0 8px 30px rgba(255, 61, 0, 0.5);
        }

        .card-img-top {
            height: 250px;
            object-fit: cover;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        .card-body {
            padding: 1.5rem;
        }

        .card-title,
        .card-body p {
            color: #ffffff;
        }

        .btn-toggle {
            background-color: #ff3d00;
            border: none;
            font-weight: bold;
            color: #fff;
            box-shadow: 0 0 10px #ff3d00;
        }

        .btn-toggle:hover {
            background-color: #ff5722;
            box-shadow: 0 0 12px #ff5722, 0 0 18px #ff5722;
        }

        .powers {
            margin-top: 1rem;
            font-style: italic;
            font-size: 0.95rem;
            color: #ffb88c;
            text-shadow: 0 0 8px #ff6d3a;
        }

        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Villanos de DC Comics</h1>
    <div class="row mt-4">
        <?php foreach ($villains as $villain): ?>
        <div class="col-md-4 mb-4">
            <div class="card h-100">
                <img src="images/<?php echo $villain['image']; ?>" class="card-img-top" alt="<?php echo $villain['name']; ?>">
                <div class="card-body">
                    <h5 class="card-title"><?php echo $villain['name']; ?></h5>
                    <p class="mb-1"><strong>Alias:</strong> <?php echo $villain['alias']; ?></p>
                    <p class="mb-1"><strong>Primera aparición:</strong> <?php echo $villain['first_appearance']; ?></p>
                    <button class="btn btn-toggle mt-2">Mostrar poderes</button>
                    <p class="powers d-none"><?php echo $villain['powers']; ?></p>
                </div>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
    $(".btn-toggle").click(function(){
        $(this).siblings(".powers").toggleClass("d-none");
    });
</script>
</body>
</html>