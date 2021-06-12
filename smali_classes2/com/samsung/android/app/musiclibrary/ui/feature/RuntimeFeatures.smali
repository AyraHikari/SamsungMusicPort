.class public final Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "C900"

    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeFeatures;->a:[Ljava/lang/String;

    .line 11
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeFeatures;->b:Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;

    return-void
.end method

.method public static final a()Z
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeFeatures;->b:Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeDeviceProperties;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final synthetic b()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeFeatures;->a:[Ljava/lang/String;

    return-object v0
.end method
