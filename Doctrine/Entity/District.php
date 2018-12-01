<?php


namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;


/**
 * @ORM\Entity(repositoryClass="App\Repository\DistrictRepository")
 * @ORM\Table(name="district")
 */
class District
{
    use IdentifiableTrait;

    /**
     * @var string
     *
     * @ORM\Column(type="string")
     */
    protected $name;

    /**
     * @var string
     *
     * @ORM\Column(type="string")
     */
    protected $vehRegNum;

    /**
     * @var integer
     *
     * @ORM\Column(type="integer")
     */
    protected $code;

    /**
     * @var Region
     *
     * @ORM\ManyToOne(targetEntity=Region::class)
     * @ORM\JoinColumn(name="region_id", referencedColumnName="id")
     */
    protected $region;

    /**
     * @var boolean
     *
     * @ORM\Column(type="boolean")
     */
    protected $use;

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @param string $name
     * @return District
     */
    public function setName(string $name): self
    {
        $this->name = $name;
        return $this;
    }

    /**
     * @return string
     */
    public function getVehRegNum(): string
    {
        return $this->vehRegNum;
    }

    /**
     * @param string $vehRegNum
     * @return District
     */
    public function setVehRegNum(string $vehRegNum): self
    {
        $this->vehRegNum = $vehRegNum;

        return $this;
    }

    /**
     * @return int
     */
    public function getCode(): int
    {
        return $this->code;
    }

    /**
     * @param int $code
     * @return District
     */
    public function setCode(int $code): self
    {
        $this->code = $code;

        return $this;
    }

    /**
     * @return Region
     */
    public function getRegion(): Region
    {
        return $this->region;
    }

    /**
     * @param Region $region
     * @return District
     */
    public function setRegion(Region $region): self
    {
        $this->region = $region;

        return $this;
    }

    /**
     * @return bool
     */
    public function isUse(): bool
    {
        return $this->use;
    }

    /**
     * @param bool $use
     * @return District
     */
    public function setUse(bool $use): self
    {
        $this->use = $use;

        return $this;
    }
}