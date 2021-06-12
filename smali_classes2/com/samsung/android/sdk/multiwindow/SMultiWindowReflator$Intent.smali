.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intent"
.end annotation


# static fields
.field public static EXTRA_WINDOW_DEFAULT_SIZE:Ljava/lang/String;

.field public static EXTRA_WINDOW_LAST_SIZE:Ljava/lang/String;

.field public static EXTRA_WINDOW_MODE:Ljava/lang/String;

.field public static EXTRA_WINDOW_POSITION:Ljava/lang/String;

.field public static EXTRA_WINDOW_SCALE:Ljava/lang/String;

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "EXTRA_WINDOW_MODE"

    const-string v1, "EXTRA_WINDOW_POSITION"

    const-string v2, "EXTRA_WINDOW_DEFAULT_SIZE"

    const-string v3, "EXTRA_WINDOW_LAST_SIZE"

    const-string v4, "EXTRA_WINDOW_SCALE"

    .line 85
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 97
    :try_start_0
    const-class v2, Landroid/content/Intent;

    sget-object v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 98
    const-class v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;

    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
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

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
