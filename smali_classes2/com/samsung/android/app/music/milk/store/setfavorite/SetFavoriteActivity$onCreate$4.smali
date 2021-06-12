.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$4;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$4;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$4;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->g()V

    return-void
.end method
