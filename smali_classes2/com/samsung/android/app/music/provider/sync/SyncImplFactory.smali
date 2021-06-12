.class final Lcom/samsung/android/app/music/provider/sync/SyncImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/sync/SyncImplFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 504
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncImplFactory;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/sync/SyncImplFactory;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncImplFactory;->a:Lcom/samsung/android/app/music/provider/sync/SyncImplFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/Syncable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 508
    :pswitch_0
    new-instance p2, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Lcom/samsung/android/app/music/provider/sync/Syncable;

    goto :goto_0

    .line 507
    :pswitch_1
    new-instance p2, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Lcom/samsung/android/app/music/provider/sync/Syncable;

    goto :goto_0

    .line 509
    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0, p3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    move-object p1, p2

    check-cast p1, Lcom/samsung/android/app/music/provider/sync/Syncable;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
