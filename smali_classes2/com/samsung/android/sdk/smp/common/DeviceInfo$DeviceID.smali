.class public Lcom/samsung/android/sdk/smp/common/DeviceInfo$DeviceID;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/common/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceID"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/DeviceInfo$DeviceID;->a:Ljava/lang/String;

    .line 251
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/common/DeviceInfo$DeviceID;->b:Ljava/lang/String;

    return-void
.end method
