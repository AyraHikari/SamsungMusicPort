.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;
.super Ljava/lang/Object;
.source "SMultiWindowReflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowManagerPolicy"
.end annotation


# static fields
.field public static FIELD_NAMES:[Ljava/lang/String;

.field public static WINDOW_MODE_FREESTYLE:I

.field public static WINDOW_MODE_MASK:I

.field public static WINDOW_MODE_NORMAL:I

.field public static WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

.field public static WINDOW_MODE_OPTION_COMMON_PINUP:I

.field public static WINDOW_MODE_OPTION_COMMON_SCALE:I

.field public static WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_C:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_D:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_E:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const-string v0, "WINDOW_MODE_MASK"

    const-string v1, "WINDOW_MODE_NORMAL"

    const-string v2, "WINDOW_MODE_FREESTYLE"

    const-string v3, "WINDOW_MODE_OPTION_COMMON_SCALE"

    const-string v4, "WINDOW_MODE_OPTION_COMMON_PINUP"

    const-string v5, "WINDOW_MODE_OPTION_COMMON_MINIMIZED"

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_MASK"

    const-string v7, "WINDOW_MODE_OPTION_SPLIT_ZONE_A"

    const-string v8, "WINDOW_MODE_OPTION_SPLIT_ZONE_B"

    const-string v9, "WINDOW_MODE_OPTION_SPLIT_ZONE_C"

    const-string v10, "WINDOW_MODE_OPTION_SPLIT_ZONE_D"

    const-string v11, "WINDOW_MODE_OPTION_SPLIT_ZONE_E"

    const-string v12, "WINDOW_MODE_OPTION_SPLIT_ZONE_F"

    const-string v13, "WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN"

    const-string v14, "WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK"

    .line 1
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    .line 2
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    :try_start_0
    const-class v2, Landroid/view/WindowManagerPolicy;

    sget-object v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 4
    const-class v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;

    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v3, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
