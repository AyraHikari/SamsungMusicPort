.class final Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Landroid/util/AttributeSet;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;
    .locals 1

    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Landroid/util/AttributeSet;)V

    return-object v0
.end method
