<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, [
                'attr' => ['class' => 'form-control mt-2'],
                'label_attr' => ['class' => 'text-white']
            ])
            ->add('date_time',  null, [
                'attr' => ['class' => 'form-control mt-1'],
                'label_attr' => ['class' => 'text-white my-2'],
                "widget" => "single_text"
            ])
            ->add('description', null, [
                'attr' => ['class' => 'form-control mt-1'],
                'label_attr' => ['class' => 'text-white my-2']
            ])
            ->add('image', null, [
                'attr' => ['class' => 'form-control mt-1'],
                'label_attr' => ['class' => 'text-white my-2']
            ])
            ->add('capacity', null, [
                'attr' => ['class' => 'form-control mt-1'],
                'label_attr' => ['class' => 'text-white my-2']
            ])
            ->add('email', null, [
                'attr' => ['class' => 'form-control mt-1'],
                'label_attr' => ['class' => 'text-white my-2']
            ])
            ->add('phone', null, [
                'attr' => ['class' => 'form-control mt-1'],
                'label_attr' => ['class' => 'text-white my-2']
            ])
            ->add('address', null, [
                'attr' => ['class' => 'form-control mt-1'],
                'label_attr' => ['class' => 'text-white my-2']
            ])
            ->add('url', null, [
                'attr' => ['class' => 'form-control mt-1'],
                'choices'  => [
                    'Music' => 'music',
                    'Sport' => 'sport',
                    'Movie' => 'movie',
                    'Theater' => 'theater',
                    'Operette' => 'operette',
                    'Fun' => 'fun',
                ],
                'label_attr' => ['class' => 'text-white my-2']
            ])
            ->add('type', ChoiceType::class, [
                'attr' => ['class' => 'form-control mt-1'],
                'label_attr' => ['class' => 'text-white my-2']
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
