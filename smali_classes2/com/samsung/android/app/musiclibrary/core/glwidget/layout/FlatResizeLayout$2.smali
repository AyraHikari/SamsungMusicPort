.class synthetic Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$musiclibrary$core$glwidget$layout$FlatResizeLayoutConfig$Shape:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 366
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->values()[Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$2;->$SwitchMap$com$samsung$android$app$musiclibrary$core$glwidget$layout$FlatResizeLayoutConfig$Shape:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$2;->$SwitchMap$com$samsung$android$app$musiclibrary$core$glwidget$layout$FlatResizeLayoutConfig$Shape:[I

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Circle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$2;->$SwitchMap$com$samsung$android$app$musiclibrary$core$glwidget$layout$FlatResizeLayoutConfig$Shape:[I

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->RoundRectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$2;->$SwitchMap$com$samsung$android$app$musiclibrary$core$glwidget$layout$FlatResizeLayoutConfig$Shape:[I

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Rectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
