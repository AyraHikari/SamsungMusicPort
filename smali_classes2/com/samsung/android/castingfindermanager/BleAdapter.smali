.class Lcom/samsung/android/castingfindermanager/BleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;,
        Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;,
        Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

.field private d:Lcom/samsung/android/library/beaconmanager/BleScanManager;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/castingfindermanager/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

.field private final h:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.easysetup.registeredtv"

    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/castingfindermanager/BleAdapter;->a:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->f:I

    .line 157
    new-instance v0, Lcom/samsung/android/castingfindermanager/BleAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/BleAdapter$2;-><init>(Lcom/samsung/android/castingfindermanager/BleAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->g:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    .line 231
    new-instance v0, Lcom/samsung/android/castingfindermanager/BleAdapter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/BleAdapter$3;-><init>(Lcom/samsung/android/castingfindermanager/BleAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->h:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;

    const-string v0, "BleAdapter"

    const-string v1, "BleAdapter Constructor"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->b:Landroid/content/Context;

    .line 48
    new-instance p1, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;-><init>(Lcom/samsung/android/castingfindermanager/BleAdapter;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->c:Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/samsung/android/castingfindermanager/BleDevice;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "name"

    .line 194
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "bt"

    .line 195
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "ble"

    .line 196
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "p2p"

    .line 197
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "wifi"

    .line 198
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "ethernet"

    .line 199
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "ssid"

    .line 200
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v2, "bssid"

    .line 201
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "allowedservice"

    .line 202
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 203
    new-instance v1, Lcom/samsung/android/castingfindermanager/BleDevice;

    iget-object v14, v0, Lcom/samsung/android/castingfindermanager/BleAdapter;->b:Landroid/content/Context;

    new-instance v15, Lcom/samsung/android/library/beaconmanager/Tv;

    const/4 v2, 0x0

    new-array v13, v2, [I

    move-object v3, v15

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/library/beaconmanager/Tv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[I)V

    iget-object v2, v0, Lcom/samsung/android/castingfindermanager/BleAdapter;->c:Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    iget-object v3, v0, Lcom/samsung/android/castingfindermanager/BleAdapter;->h:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;

    iget v4, v0, Lcom/samsung/android/castingfindermanager/BleAdapter;->f:I

    move-object v13, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/castingfindermanager/BleDevice;-><init>(Landroid/content/Context;Lcom/samsung/android/library/beaconmanager/Tv;Landroid/os/Handler;Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;I)V

    return-object v1
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/BleAdapter;)Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->g:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/BleAdapter;Lcom/samsung/android/library/beaconmanager/Tv;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/castingfindermanager/BleAdapter;->a(Lcom/samsung/android/library/beaconmanager/Tv;)V

    return-void
.end method

.method private a(Lcom/samsung/android/library/beaconmanager/Tv;)V
    .locals 7

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getModelName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BleAdapter"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This tv doesn\'t have ModelName, ignore this tv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 116
    new-instance v0, Lcom/samsung/android/castingfindermanager/BleDevice;

    iget-object v2, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->c:Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    iget-object v5, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->h:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;

    iget v6, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->f:I

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/castingfindermanager/BleDevice;-><init>(Landroid/content/Context;Lcom/samsung/android/library/beaconmanager/Tv;Landroid/os/Handler;Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceStatusListener;I)V

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/castingfindermanager/BleDevice;

    .line 118
    invoke-virtual {v2}, Lcom/samsung/android/castingfindermanager/BleDevice;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "BleAdapter"

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This TV is Registered TV. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/castingfindermanager/BleDevice;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleDevice;->e()V

    .line 125
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleDevice;->d()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleDevice;->g()I

    move-result v1

    const/16 v2, -0x80

    if-ne v1, v2, :cond_3

    const-string v0, "BleAdapter"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This unregistered tv is off, ignore this tv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v1, "BleAdapter"

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    add Tv = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleDevice;->h()V

    .line 132
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->c:Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/castingfindermanager/BleDevice;

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/castingfindermanager/BleDevice;->a(I)V

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleDevice;->i()V

    .line 138
    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleDevice;->h()V

    const-string p1, "BleAdapter"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    update Tv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleDevice;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/BleAdapter;Lcom/samsung/android/castingfindermanager/BleDevice;I)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/castingfindermanager/BleAdapter;->a(Lcom/samsung/android/castingfindermanager/BleDevice;I)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/samsung/android/castingfindermanager/BleDevice;I)Z
    .locals 2

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/BleDevice;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/BleDevice;->g()I

    move-result p1

    const/16 p2, -0x80

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method static synthetic b(Lcom/samsung/android/castingfindermanager/BleAdapter;)Lcom/samsung/android/library/beaconmanager/BleScanManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->d:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/castingfindermanager/BleAdapter;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->f()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/castingfindermanager/BleAdapter;)Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->c:Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    return-object p0
.end method

.method private e()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/castingfindermanager/BleDevice;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/castingfindermanager/BleAdapter;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 174
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 175
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/castingfindermanager/BleAdapter;->a(Landroid/database/Cursor;)Lcom/samsung/android/castingfindermanager/BleDevice;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 186
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_2
    :try_start_2
    const-string v3, "BleAdapter"

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRegisteredTvList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    const-string v1, "BleAdapter"

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegisteredTvList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_3

    .line 186
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method static synthetic e(Lcom/samsung/android/castingfindermanager/BleAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private f()V
    .locals 4

    const-string v0, "BleAdapter"

    const-string v1, "onServiceDisconnected"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->d:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->g:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->unregisterTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;)Z

    move-result v0

    const-string v1, "BleAdapter"

    if-eqz v0, :cond_0

    const-string v0, "unregisterTvCallback Success"

    goto :goto_0

    :cond_0
    const-string v0, "unregisterTvCallback Fail"

    .line 210
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BleAdapter"

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterTvCallback exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private g()V
    .locals 4

    const-string v0, "BleAdapter"

    const-string v1, "bleService terminate"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->d:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    if-eqz v0, :cond_0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->d:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->terminate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BleAdapter"

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminate exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/castingfindermanager/BleDevice;

    .line 226
    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/BleDevice;->i()V

    goto :goto_1

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 61
    new-instance v0, Lcom/samsung/android/library/beaconmanager/BleScanManager;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->b:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/castingfindermanager/BleAdapter$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/castingfindermanager/BleAdapter$1;-><init>(Lcom/samsung/android/castingfindermanager/BleAdapter;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/library/beaconmanager/BleScanManager;-><init>(Landroid/content/Context;Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->d:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 1

    .line 52
    new-instance v0, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;-><init>(Lcom/samsung/android/castingfindermanager/BleAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->c:Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    return-void
.end method

.method public a(Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->c:Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->a(Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->f()V

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->g()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->c:Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter$BleHandler;->a()V

    return-void
.end method

.method public d()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/castingfindermanager/BleDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "BleAdapter"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/BleAdapter;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
