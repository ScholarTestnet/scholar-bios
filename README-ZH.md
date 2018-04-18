# 主网启动流程预览

#### [Click me switch to English version](README.md)
#### [点击查看中文版本](README-ZH.md)

以下步骤用于启动新的DAWN 3.0测试网络，基于[Thomas Cox's关于启动主网的文章](https://medium.com/eosio/bios-boot-eosio-blockchain-2b58b8a978a1).

## 启动前期

1. 选中一人为启动节点.

## 启动节点

1. 启动节点获取[Scholar测试网络虚拟快照](https://github.com/ScholarTestnet/scholar-accounts/blob/master/scripts/generate-snapshot.js). `((后续需要将这个脚本替换为真实的快照文件))`
2. 启动节点获取[Scholar测试网络创世块](https://raw.githubusercontent.com/ScholarTestnet/scholar-server-config/master/genesis.json).
3. 启动节点将生成一对新的公私钥用于执行启动流程
4. 启动节点将执行以下步骤:

   1. 产出第一个区块, 
   2. 使用上面生成的公私钥安装核心智能合约,
   3. 安装[已经任命好的21个ABP(appointed block producers)](https://github.com/ScholarTestnet/scholar-accounts/blob/master/bios/create-accounts.sh),
   4. 将系统权限分配给21个ABP,21个ABP将组成第一次投票网络,
   5. 启动节点公布它在上面生成的私钥. 

## 被任命的出块节点

1. 21个ABP开始连接并且验证安装环境.
2. 所有人都可以开始连接.
3. ABP们运行投票网络, (主网上线时启动节点与21个ABP前十轮选举都不允许被选为候选节点参加投票,当然我们测试网络还是略过这一步了)

## 被选中的出块节点

1. 被选中的出块节点开始出块.
2. 10轮选举以后, 启动节点与21个ABP允许以候选节点的身份参与投票.
