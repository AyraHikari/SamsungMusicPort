.class public final enum Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

.field public static final enum OpenGL:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

.field public static final enum Standard:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    const-string v1, "OpenGL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->OpenGL:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    const-string v1, "Standard"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->Standard:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->OpenGL:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->Standard:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;
    .locals 1

    .line 48
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;
    .locals 1

    .line 48
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    invoke-virtual {v0}, [Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    return-object v0
.end method
