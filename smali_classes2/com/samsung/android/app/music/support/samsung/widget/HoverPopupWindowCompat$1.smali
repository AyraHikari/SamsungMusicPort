.class Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$1;
.super Ljava/lang/Object;
.source "HoverPopupWindowCompat.java"

# interfaces
.implements Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$1;->val$listener:Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$1;->val$listener:Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;->onSetContentView(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
