.class public Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayRadioInfo"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/samsung/android/app/music/model/AdInfo;

.field g:[J

.field h:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->h:I

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->h:I

    return v0
.end method

.method public f()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->d:Z

    return v0
.end method

.method public g()Lcom/samsung/android/app/music/model/AdInfo;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->f:Lcom/samsung/android/app/music/model/AdInfo;

    return-object v0
.end method
