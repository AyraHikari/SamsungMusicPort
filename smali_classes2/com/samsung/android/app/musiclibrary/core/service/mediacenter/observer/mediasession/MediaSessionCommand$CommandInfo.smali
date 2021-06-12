.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommandInfo"
.end annotation


# instance fields
.field final args:Landroid/os/Bundle;

.field final cb:Landroid/os/ResultReceiver;

.field final command:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;->command:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;->args:Landroid/os/Bundle;

    .line 159
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCommand$CommandInfo;->cb:Landroid/os/ResultReceiver;

    return-void
.end method
