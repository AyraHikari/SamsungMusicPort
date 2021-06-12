.class public final Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$EdgePanelViewBuilderFactory;,
        Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$NotificationViewBuilderFactory;,
        Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$WidgetRemoteViewBuilderFactory;,
        Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$CoverRemoteViewBuilderFactory;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->a:Landroid/util/SparseArray;

    .line 14
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->b:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$CoverRemoteViewBuilderFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$CoverRemoteViewBuilderFactory;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$1;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$WidgetRemoteViewBuilderFactory;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$WidgetRemoteViewBuilderFactory;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$1;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$NotificationViewBuilderFactory;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$NotificationViewBuilderFactory;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$1;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$EdgePanelViewBuilderFactory;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$EdgePanelViewBuilderFactory;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$1;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->b:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    return-object v0
.end method


# virtual methods
.method public getFactory(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;
    .locals 1

    .line 32
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    return-object p1
.end method
