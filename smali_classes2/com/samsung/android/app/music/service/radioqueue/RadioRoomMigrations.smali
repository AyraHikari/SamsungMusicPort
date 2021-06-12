.class final Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/arch/persistence/room/migration/Migration;

.field static final b:Landroid/arch/persistence/room/migration/Migration;

.field static final c:Landroid/arch/persistence/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations$1;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations$1;-><init>(II)V

    sput-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations;->a:Landroid/arch/persistence/room/migration/Migration;

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations$2;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations$2;-><init>(II)V

    sput-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations;->b:Landroid/arch/persistence/room/migration/Migration;

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations$3;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations$3;-><init>(II)V

    sput-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioRoomMigrations;->c:Landroid/arch/persistence/room/migration/Migration;

    return-void
.end method
