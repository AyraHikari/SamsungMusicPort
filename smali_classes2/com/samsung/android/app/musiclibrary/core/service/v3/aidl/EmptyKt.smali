.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyIntArray:[I

.field private static final EmptyLongArray:[J

.field public static final EmptyString:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [J

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->EmptyLongArray:[J

    .line 5
    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->EmptyIntArray:[I

    return-void
.end method

.method public static final getEmptyIntArray()[I
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->EmptyIntArray:[I

    return-object v0
.end method

.method public static final getEmptyLongArray()[J
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->EmptyLongArray:[J

    return-object v0
.end method
