.class Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$2;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$2;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;->i()V

    return-void
.end method
