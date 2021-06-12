.class abstract Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$RadioDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "RadioDatabase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/samsung/android/app/music/service/radioqueue/RadioRoom$PlayListDao;
.end method
