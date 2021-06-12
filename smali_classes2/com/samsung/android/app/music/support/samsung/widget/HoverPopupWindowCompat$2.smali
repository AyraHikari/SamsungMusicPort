.class final Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$2;->val$listener:Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$2;->val$listener:Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;->onSetContentView(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
