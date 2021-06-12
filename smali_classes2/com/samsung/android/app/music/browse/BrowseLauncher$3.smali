.class final Lcom/samsung/android/app/music/browse/BrowseLauncher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$3;->a:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 265
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$3;->a:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

    const/16 v0, 0x44e

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$3;->a(Ljava/lang/Throwable;)V

    return-void
.end method
