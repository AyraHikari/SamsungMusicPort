.class public Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalCurationData"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;
    .locals 1

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;-><init>()V

    .line 62
    iput-object p0, v0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;->a:Ljava/lang/String;

    .line 63
    iput-object p1, v0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;->b:Ljava/lang/String;

    .line 64
    iput-object p2, v0, Lcom/samsung/android/app/music/network/database/GlobalCurationDataRoom$GlobalCurationData;->c:Ljava/lang/String;

    return-object v0
.end method
