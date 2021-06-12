.class public Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSource"
.end annotation


# instance fields
.field public extraData:Landroid/os/Bundle;

.field public nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field public playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public timePrepared:J

.field public timeRequested:J

.field public timeSetDataSource:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
