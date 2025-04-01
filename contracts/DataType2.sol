// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataType2 {
    string private message = "Hello, Solidity!";

    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public {
        message = _message;
    }

    uint256[] private numbers;

    function getNumbers() public view returns (uint256[] memory) {
        return numbers;
    }
    function addNumber(uint256 _number) public {
        numbers.push(_number);
    }

    function getNumber(uint256 _number) public view returns (uint256) {
        require(_number < numbers.length, "out of array");
        return numbers[_number];
    }

    string[] private names;

    function getNames() public view returns (string[] memory) {
        return names;
    }

    function addName(string memory _name) public {
        names.push(_name);
    }

    struct User {
        string name;
        uint256 age;
    }

    mapping(address => uint256) private balances;
    mapping(address => User) private users;

    function setBalance(address _add, uint256 _balance) public {
        balances[_add] = _balance;
    }

    function getBalance(address _add) public view returns (uint256) {
        return balances[_add];
    }

    function setUser(address _add, string memory _str, uint256 _int) public {
        users[_add] = User(_str, _int);
    }

    function getUser(
        address _userAddress
    ) public view returns (string memory, uint256) {
        User memory user = users[_userAddress];
        return (user.name, user.age);
    }

    bytes private dynamicData = "";

    function setDynamicData(bytes memory _data) public {
        dynamicData = _data;
    }

    function getDynamicData() public view returns (bytes memory) {
        return dynamicData;
    }

    bytes32 private fixedData =
        0xabcdef1234560000000000000000000000000000000000000000000000000000;

    function setFixedData(bytes32 _data) public {
        fixedData = _data;
    }

    function getFixedData() public view returns (bytes32) {
        return fixedData;
    }

    function getDetails()
        public
        view
        returns (
            string memory,
            uint256[] memory,
            string[] memory,
            bytes32,
            bytes memory
        )
    {
        return (message, numbers, names, fixedData, dynamicData);
    }
}
