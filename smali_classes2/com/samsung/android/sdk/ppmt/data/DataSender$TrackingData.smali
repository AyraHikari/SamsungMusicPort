.class public Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/data/DataSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackingData"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-wide p1, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->a:J

    .line 96
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->b:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->c:Ljava/lang/String;

    return-void
.end method
