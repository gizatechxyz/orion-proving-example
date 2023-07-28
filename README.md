# Proving MNIST 2 Layer NN using STARK prover

In this repository you can find an example on how to prove the inference of a NN built with Orion using LambdaClass STARK Prover.

## Setup

1. Clone the repository.
2. Install [Cairo](https://github.com/franalgaba/cairo-installer) and [Scarb](https://docs.swmansion.com/scarb/docs#installation).
3. Build the Orion NN contract using Scarb:

```bash
scarb build
```

3. Convert the Sierra file into CASM:

```bash
starknet-sierra-compile -- target/dev/orion_runner_OrionRunner.sierra.json target/dev/orion_runner.casm.json
```

## Proving the inference

1. Clone the STARK prover repository.

```bash
git clone https://github.com/lambdaclass/lambdaworks_starknet_stack_prover.git
```

2. Go the repo directory:

```bash
cd lambdaworks_starknet_stack_prover
```

2. Prove the CASM file:

```bash
make prove PROGRAM_PATH=../target/dev/orion_runner.casm.json PROOF_PATH=zk.proof
```

3. Verify the proof:

```bash
make verify PROOF_PATH=./zk.proof
```