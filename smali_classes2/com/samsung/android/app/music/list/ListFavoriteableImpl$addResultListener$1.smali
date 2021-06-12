.class final Lcom/samsung/android/app/music/list/ListFavoriteableImpl$addResultListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/AddResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$addResultListener$1;->a:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/samsung/android/app/music/list/favorite/AddResult;)V
    .locals 8

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/AddResult;->getFlag()I

    move-result p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$addResultListener$1;->a:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "MaxPopupDialogFragment"

    .line 41
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$addResultListener$1;->a:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)Lcom/samsung/android/app/music/list/favorite/Category;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/list/favorite/Category;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->toFavoriteType(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 43
    sget-object v2, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->Companion:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;->newInstance$default(Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    move-result-object v0

    const-string v1, "MaxPopupDialogFragment"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$addResultListener$1;->a:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method
