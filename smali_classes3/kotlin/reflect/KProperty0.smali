.class public interface abstract Lkotlin/reflect/KProperty0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;
.implements Lkotlin/reflect/KProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/KProperty0$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "TR;>;",
        "Lkotlin/reflect/KProperty<",
        "TR;>;"
    }
.end annotation


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract getDelegate()Ljava/lang/Object;
.end method

.method public abstract getGetter()Lkotlin/reflect/KProperty0$Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KProperty0$Getter<",
            "TR;>;"
        }
    .end annotation
.end method
