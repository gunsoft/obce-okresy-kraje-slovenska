<?php


namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;


/**
 * @ORM\Entity(repositoryClass="App\Repository\VillageRepository")
 * @ORM\Table(name="village")
 */
class Village
{
    use IdentifiableTrait;

    /**
     * @var string
     *
     * @ORM\Column(type="string")
     */
    protected $fullname;

    /**
     * @var string
     *
     * @ORM\Column(type="string")
     */
    protected $shortname;

    /**
     * @var string
     *
     * @ORM\Column(type="string")
     */
    protected $zip;

    /**
     * @var District
     *
     * @ORM\ManyToOne(targetEntity=District::class)
     * @ORM\JoinColumn(referencedColumnName="id", name="district_id")
     */
    protected $district;

    /**
     * @var Region
     *
     * @ORM\ManyToOne(targetEntity=Region::class)
     *
     * @ORM\JoinColumn(referencedColumnName="id", name="region_id")
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
    public function getFullname(): string
    {
        return $this->fullname;
    }

    /**
     * @param string $fullname
     * @return Village
     */
    public function setFullname(string $fullname): self
    {
        $this->fullname = $fullname;

        return $this;
    }

    /**
     * @return string
     */
    public function getShortname(): string
    {
        return $this->shortname;
    }

    /**
     * @param string $shortname
     * @return Village
     */
    public function setShortname(string $shortname): self
    {
        $this->shortname = $shortname;

        return $this;
    }

    /**
     * @return string
     */
    public function getZip(): string
    {
        return $this->zip;
    }

    /**
     * @param string $zip
     * @return Village
     */
    public function setZip(string $zip): self
    {
        $this->zip = $zip;

        return $this;
    }

    /**
     * @return District
     */
    public function getDistrict(): District
    {
        return $this->district;
    }

    /**
     * @param District $district
     * @return Village
     */
    public function setDistrict(District $district): self
    {
        $this->district = $district;

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
     * @return Village
     */
    public function setRegion(Region $region): self
    {
        $this->region = $region;

        return $this;
    }

    /**
     * @param bool $use
     * @return Village
     */
    public function setUse(bool $use): self
    {
        $this->use = $use;

        return $this;
    }

    /**
     * @return bool
     */
    public function isUse(): bool
    {
        return $this->use;
    }
}