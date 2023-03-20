.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;
.super Ljava/lang/Object;
.source "SMultiWindowReflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageManager"
.end annotation


# static fields
.field public static FEATURE_MULTIWINDOW:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_FREESTYLE:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_FREESTYLE_DOCKING:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_FREESTYLE_LAUNCH:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_MINIMIZE:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_MULTIINSTANCE:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_PHONE:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_QUADVIEW:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_TABLET:Ljava/lang/String;

.field public static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "FEATURE_MULTIWINDOW"

    const-string v1, "FEATURE_MULTIWINDOW_FREESTYLE"

    const-string v2, "FEATURE_MULTIWINDOW_MINIMIZE"

    const-string v3, "FEATURE_MULTIWINDOW_QUADVIEW"

    const-string v4, "FEATURE_MULTIWINDOW_MULTIINSTANCE"

    const-string v5, "FEATURE_MULTIWINDOW_FREESTYLE_DOCKING"

    const-string v6, "FEATURE_MULTIWINDOW_FREESTYLE_LAUNCH"

    const-string v7, "FEATURE_MULTIWINDOW_PHONE"

    const-string v8, "FEATURE_MULTIWINDOW_TABLET"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    .line 2
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    :try_start_0
    const-class v2, Landroid/content/pm/PackageManager;

    sget-object v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 4
    const-class v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;

    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 5
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
