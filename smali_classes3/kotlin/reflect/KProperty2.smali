.class public interface abstract Lkotlin/reflect/KProperty2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;
.implements Lkotlin/reflect/KProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/KProperty2$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "TD;TE;TR;>;",
        "Lkotlin/reflect/KProperty<",
        "TR;>;"
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TR;"
        }
    .end annotation
.end method

.method public abstract getDelegate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getGetter()Lkotlin/reflect/KProperty2$Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KProperty2$Getter<",
            "TD;TE;TR;>;"
        }
    .end annotation
.end method
