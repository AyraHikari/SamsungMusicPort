.class public Lcom/samsung/android/app/music/update/VersionCheckInfo$DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/update/VersionCheckInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DeviceInfo"
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SAMSUNG-"

    const-string v2, ""

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/update/VersionCheckInfo$DeviceInfo;->a:Ljava/lang/String;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/update/VersionCheckInfo$DeviceInfo;->b:Ljava/lang/String;

    return-void
.end method
