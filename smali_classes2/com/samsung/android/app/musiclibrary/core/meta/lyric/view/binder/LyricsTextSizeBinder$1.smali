.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->access$000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .line 71
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->access$300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)F

    move-result v1

    float-to-int v1, v1

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->a:I

    invoke-interface {p1, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;->onTextMagnificationChanged(ZII)V

    :cond_0
    return-void
.end method
