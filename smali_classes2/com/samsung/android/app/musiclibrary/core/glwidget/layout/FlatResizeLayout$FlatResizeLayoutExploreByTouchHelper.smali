.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatResizeLayoutExploreByTouchHelper"
.end annotation


# static fields
.field public static final ACCESSIBILITY_INVISIBLE:D = 0.4


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;Landroid/view/View;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    .line 1084
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1081
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private setEvent(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V
    .locals 0

    .line 1140
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1141
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;)V
    .locals 0

    .line 1145
    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1146
    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 6

    .line 1089
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 1097
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isTouched(FFI)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1098
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1174
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/16 p3, 0x10

    if-ne p2, p3, :cond_2

    .line 1186
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    const/4 v0, 0x1

    if-lt p2, p3, :cond_1

    .line 1187
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnItemClick(I)V

    goto :goto_0

    .line 1189
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 1190
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :goto_0
    return v0

    :cond_2
    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-FlatResizeLayoutAccessibility"

    const-string v0, "Not initialized"

    .line 1129
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->setEvent(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "SMUSIC-FlatResizeLayoutAccessibility"

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopulateEventForVirtualView - Unable to find model for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->setEvent(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .line 1153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-FlatResizeLayoutAccessibility"

    const-string v0, "Not initialized"

    .line 1154
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->setNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "SMUSIC-FlatResizeLayoutAccessibility"

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopulateNodeForVirtualView Unable to find model for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->getSelectedAlbumSize()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 1161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I

    move-result v0

    sub-int/2addr v0, p1

    .line 1162
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I

    move-result v1

    add-int/2addr v1, p1

    .line 1163
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I

    move-result v2

    sub-int/2addr v2, p1

    .line 1164
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I

    move-result v3

    add-int/2addr v3, p1

    .line 1165
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/16 p1, 0x10

    .line 1166
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1168
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->setNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;)V

    return-void
.end method
