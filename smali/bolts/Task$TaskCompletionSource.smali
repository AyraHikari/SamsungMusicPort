.class public Lbolts/Task$TaskCompletionSource;
.super Lbolts/TaskCompletionSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskCompletionSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbolts/TaskCompletionSource<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/Task;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Lbolts/Task$TaskCompletionSource;->a:Lbolts/Task;

    invoke-direct {p0}, Lbolts/TaskCompletionSource;-><init>()V

    return-void
.end method
