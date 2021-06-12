.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchExplorationEnabledListener"
.end annotation


# instance fields
.field public enabled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$1;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    .line 675
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;->enabled:Z

    return-void
.end method
