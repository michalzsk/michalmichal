<?php
    class Products{
        private $id;
        private $ean;
        private $name;
        private $description;
        private $price;
        private $createdAt;
        private $updatedAt;
        private $deletedAt;

        public function getId() : int{
            return $this->id;
        }
        public function setId(int $id) :void {
            $this->id=$id;
        }
        public function getEAN() : string{
            return $this->ean;
        }
        public function setEAN(string $ean) :void {
            $this->ean=$ean;
        }
        public function getName() : string{
            return $this->name;
        }
        public function setName(string $name) :void {
            $this->name=$name;
        }
        public function getDesc() : string{
            return $this->description;
        }
        public function setDesc(string $description) :void {
            $this->description=$description;
        }
        public function getPrice() : int{
            return $this->price;
        }
        public function setPrice(int $price) :void {
            $this->price=$price;
        }
        public function getCreate() : string{
            return $this->createdAt;
        }
        public function setCreate(string $createdAt) :void {
            $this->createdAt=$createdAt;
        }
        public function getUpdate() : string{
            return $this->updatedAt;
        }
        public function setUpdate(string $updatedAt) :void {
            $this->updatedAt=$updatedAt;
        }
        public function getDelete() : string{
            return $this->deletedAt;
        }
        public function setDelete(string $deletedAt) :void {
            $this->deletedAt=$deletedAt;
        }
    }
?>