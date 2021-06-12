.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiWindowStyle"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static NOTIFY_STATE_HIDDEN:I

.field public static NOTIFY_STATE_SHOWN:I

.field public static OPTION_SCALE:I

.field public static TYPE_CASCADE:I

.field public static TYPE_NORMAL:I

.field public static TYPE_SPLIT:I

.field public static ZONE_A:I

.field public static ZONE_B:I

.field public static ZONE_C:I

.field public static ZONE_D:I

.field public static ZONE_E:I

.field public static ZONE_F:I

.field public static ZONE_FULL:I

.field public static ZONE_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "TYPE_NORMAL"

    const-string v1, "TYPE_SPLIT"

    const-string v2, "TYPE_CASCADE"

    const-string v3, "ZONE_UNKNOWN"

    const-string v4, "ZONE_A"

    const-string v5, "ZONE_B"

    const-string v6, "ZONE_C"

    const-string v7, "ZONE_D"

    const-string v8, "ZONE_E"

    const-string v9, "ZONE_F"

    const-string v10, "ZONE_FULL"

    const-string v11, "OPTION_SCALE"

    const-string v12, "NOTIFY_STATE_HIDDEN"

    const-string v13, "NOTIFY_STATE_SHOWN"

    .line 215
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v0

    :try_start_0
    const-string v1, "com.samsung.android.multiwindow.MultiWindowStyle"

    .line 235
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 238
    const-class v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    sget-object v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 240
    const-class v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;

    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 241
    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v3, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
