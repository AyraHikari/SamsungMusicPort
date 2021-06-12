.class public final Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;
    }
.end annotation


# instance fields
.field public a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "playLength"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "dateStamp"
    .end annotation
.end field

.field public c:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field public d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "trackInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocalPlayRecord > "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  PlayLength : "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  PlayStartTimeStamp : "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Meta : ["

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Title : "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Artist : "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Album : "

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Duration : "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
