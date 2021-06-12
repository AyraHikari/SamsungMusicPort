.class final Lcom/samsung/android/app/music/main/MyMusicModeTipTask$showTip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$showTip$1;->a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$showTip$1;->a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->a(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
