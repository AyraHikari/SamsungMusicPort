.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;->b:Landroid/view/View;

    const-string v0, "progressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;->c:Landroid/view/View;

    const-string v0, "nextButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$5;->d:Landroid/view/View;

    const-string v1, "saveButton"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
