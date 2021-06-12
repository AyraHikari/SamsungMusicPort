.class public abstract Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;


# instance fields
.field protected b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()V
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
