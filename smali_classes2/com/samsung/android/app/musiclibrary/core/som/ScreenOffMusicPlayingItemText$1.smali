.class Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->updateUi(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;->val$artist:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;->val$artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method
