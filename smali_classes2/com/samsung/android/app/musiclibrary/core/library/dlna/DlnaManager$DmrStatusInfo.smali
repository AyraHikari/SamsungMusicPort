.class public Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DmrStatusInfo"
.end annotation


# instance fields
.field public deviceName:Ljava/lang/String;

.field public iconUri:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public nic:Ljava/lang/String;

.field public p2pMacAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->id:Ljava/lang/String;

    .line 658
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->deviceName:Ljava/lang/String;

    .line 659
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->ipAddress:Ljava/lang/String;

    .line 660
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->p2pMacAddress:Ljava/lang/String;

    .line 661
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->nic:Ljava/lang/String;

    if-nez p6, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->iconUri:Ljava/lang/String;

    return-void
.end method
