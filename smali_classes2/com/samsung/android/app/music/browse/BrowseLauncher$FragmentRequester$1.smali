.class Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/support/v4/app/FragmentTransaction;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$1;->b:Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$1;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentTransaction;)Lkotlin/Unit;
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$1;->b:Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$1;->b:Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$1;->a:Landroid/support/v4/app/Fragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 297
    check-cast p1, Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$1;->a(Landroid/support/v4/app/FragmentTransaction;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
