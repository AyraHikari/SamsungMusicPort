.class public final enum Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

.field public static final enum Circle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

.field public static final enum Rectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

.field public static final enum RoundRectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    const-string v1, "Rectangle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Rectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    const-string v1, "RoundRectangle"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->RoundRectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    const-string v1, "Circle"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Circle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Rectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->RoundRectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Circle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;
    .locals 1

    .line 33
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    invoke-virtual {v0}, [Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    return-object v0
.end method
