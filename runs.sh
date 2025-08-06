RANK = 5

mpirun -np $RANK python3 experiment.py --dataset FashionMNIST --compress topk30 --optimizer DAMSCo --comm-set x --lr 0.001 --batch-size 8 --variety index --model LeNet5 --epochs 100 --rank $RANK

mpirun -np $RANK python3 .experiment.py --dataset FashionMNIST --compress topk30 --optimizer DaSHCo --comm-set x g --lr 0.02 --batch-size 8 --variety index --model LeNet5 --epochs 100 --rank $RANK

mpirun -np $RANK python3 experiment.py --dataset FashionMNIST --compress topk30 --optimizer DAMSCo --comm-set x --lr 0.001 --batch-size 8 --variety label --model LeNet5 --epochs 100 --rank $RANK

mpirun -np $RANK python3 experiment.py --dataset FashionMNIST --compress topk30 --optimizer DaSHCo --comm-set x g --lr 0.02 --batch-size 8 --variety label --model LeNet5 --epochs 100 --rank $RANK

mpirun -np $RANK python3 experiment.py --dataset CIFAR10 --compress topk40 --optimizer DAMSCo --comm-set x --lr 0.001 --batch-size 64 --variety index --model fixup_resnet20 --epochs 300 --rank $RANK

mpirun -np $RANK python3 experiment.py --dataset CIFAR10 --compress topk40 --optimizer DaSHCo --comm-set x g --lr 0.02 --batch-size 64 --variety index --model fixup_resnet20 --epochs 300 --rank $RANK

mpirun -np $RANK python3 experiment.py --dataset CIFAR10 --compress topk40 --optimizer DAMSCo --comm-set x --lr 0.001 --batch-size 32 --variety label --model fixup_resnet20 --epochs 300 --rank $RANK

mpirun -np $RANK python3 experiment.py --dataset CIFAR10 --compress topk40 --optimizer DaSHCo --comm-set x g --lr 0.02 --batch-size 32 --variety label --model fixup_resnet20 --epochs 300 --rank $RANK

RANK = 4

mpirun -np $RANK python3 experiment.py --dataset Shakespeare --compress topk55 --optimizer DAMSCo --comm-set x --lr 0.0001 --batch-size 128 --variety index --model nanoGPT --epochs 650 --device gpu --rank $RANK

mpirun -np $RANK python3 experiment.py --dataset Shakespeare --compress topk55 --optimizer DaSHCo --comm-set x g --lr 0.02 --batch-size 128 --variety index --model nanoGPT --epochs 650 --device gpu --rank $RANK