.class public final Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x67

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;-><init>(Landroid/content/Context;II)V

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->c()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;)V
    .locals 1

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;)V

    .line 32
    iget-boolean p1, p1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b:Z

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->c()V

    return-void
.end method

.method private final a(ZJLjava/lang/String;)V
    .locals 5

    const v0, 0x7f130250

    .line 94
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    .line 95
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s : "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    const v4, 0x7f0b0090

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    const v0, 0x7f13013b

    .line 97
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p4}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    const v0, 0x7f13024f

    .line 100
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v3, 0x54

    goto :goto_0

    :cond_0
    const v3, 0x100003

    :goto_0
    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/provider/MilkContents$Artists;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 107
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 p2, 0x0

    .line 101
    invoke-static {v2, v3, p1, p4, p2}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 113
    iget-object p2, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    const/high16 p3, 0x8000000

    .line 112
    invoke-static {p2, v0, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 110
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private final b(ZJLjava/lang/String;)V
    .locals 5

    const v0, 0x7f130252

    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    .line 121
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s : "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    const v4, 0x7f0b0080

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    const v0, 0x7f130253

    .line 123
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p4}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    const v0, 0x7f130251

    .line 126
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v3, 0x55

    goto :goto_0

    :cond_0
    const v3, 0x100002

    :goto_0
    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    .line 133
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 131
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/provider/MilkContents$Albums;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 136
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 p2, 0x0

    .line 127
    invoke-static {v2, v3, p1, p4, p2}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    const/high16 p3, 0x8000000

    .line 141
    invoke-static {p2, v0, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 139
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private final c()V
    .locals 5

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_PERMISSION_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f130257

    .line 46
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    const/high16 v4, 0x8000000

    .line 49
    invoke-static {v3, v1, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private final c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 3

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result p1

    const v0, 0x7f13024e

    .line 58
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 59
    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    if-eqz p1, :cond_1

    const v0, 0x7f13024f

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    const v0, 0x7f130251

    .line 63
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    const v0, 0x7f130254

    .line 65
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    :cond_1
    return p1
.end method

.method private final d(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 6

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b:Z

    const v0, 0x7f13024f

    .line 74
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    const v1, 0x7f130251

    .line 75
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v1

    const v2, 0x7f130254

    .line 76
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v2

    .line 77
    iget-boolean v3, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b:Z

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    .line 79
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    .line 80
    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    return-void

    .line 83
    :cond_0
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    .line 84
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    .line 85
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->d(I)Z

    move-result v0

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtistId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(ZJLjava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b(ZJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;
    .locals 1

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;-><init>(Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;)V

    return-object v0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;
    .locals 1

    const-string v0, "meta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->d(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f130179

    .line 173
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 174
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 149
    iget-boolean v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b:Z

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1301e1

    .line 153
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    const v0, 0x7f130254

    .line 156
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x20000050

    const/4 v4, 0x0

    .line 158
    invoke-static {v2, v3, p1, p2, v4}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 165
    iget-object p2, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a:Landroid/content/Context;

    const/high16 v2, 0x8000000

    .line 164
    invoke-static {p2, v0, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 162
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/app/PendingIntent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    return-object p1
.end method

.method public synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-object p1
.end method
