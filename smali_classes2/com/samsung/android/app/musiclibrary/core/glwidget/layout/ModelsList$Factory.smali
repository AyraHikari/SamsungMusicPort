.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract obtain()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListModel;"
        }
    .end annotation
.end method

.method public abstract recycle(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListModel;",
            ")V"
        }
    .end annotation
.end method
