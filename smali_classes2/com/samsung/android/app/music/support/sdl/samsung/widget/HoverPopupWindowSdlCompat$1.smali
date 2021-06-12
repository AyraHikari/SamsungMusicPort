.class final Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 0

    .line 125
    iget-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;->onSetContentView(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
