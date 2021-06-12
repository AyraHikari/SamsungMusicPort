.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SpotifyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1226
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->e(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 1227
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager;Z)V

    return-void
.end method
