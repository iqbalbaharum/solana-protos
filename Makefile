# Ensure the output directory exists
PB_DIR := pb

protoc:
	mkdir -p $(PB_DIR)
	protoc \
		--proto_path=protos \
		--go_out=$(PB_DIR) \
		--go_opt=module=github.com/iqbalbaharum/solana-protos/pb \
		--go-grpc_out=$(PB_DIR) \
		--go-grpc_opt=module=github.com/iqbalbaharum/solana-protos/pb \
		protos/*.proto
