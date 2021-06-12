.class public Lcom/facebook/share/internal/ShareFeedContent;
.super Lcom/facebook/share/model/ShareContent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/ShareFeedContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/internal/ShareFeedContent;",
        "Lcom/facebook/share/internal/ShareFeedContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/internal/ShareFeedContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final link:Ljava/lang/String;

.field private final linkCaption:Ljava/lang/String;

.field private final linkDescription:Ljava/lang/String;

.field private final linkName:Ljava/lang/String;

.field private final mediaSource:Ljava/lang/String;

.field private final picture:Ljava/lang/String;

.field private final toId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/facebook/share/internal/ShareFeedContent$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/ShareFeedContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/ShareFeedContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->toId:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->link:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkCaption:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkDescription:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->picture:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent;->mediaSource:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/internal/ShareFeedContent$Builder;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 42
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$000(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->toId:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$100(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->link:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$200(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkName:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$300(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkCaption:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$400(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkDescription:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$500(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->picture:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->access$600(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent;->mediaSource:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareFeedContent$Builder;Lcom/facebook/share/internal/ShareFeedContent$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/ShareFeedContent;-><init>(Lcom/facebook/share/internal/ShareFeedContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkCaption()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkDescription()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSource()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->mediaSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPicture()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->picture:Ljava/lang/String;

    return-object v0
.end method

.method public getToId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent;->toId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    iget-object p2, p0, Lcom/facebook/share/internal/ShareFeedContent;->toId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/facebook/share/internal/ShareFeedContent;->link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkCaption:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/facebook/share/internal/ShareFeedContent;->linkDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/facebook/share/internal/ShareFeedContent;->picture:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/facebook/share/internal/ShareFeedContent;->mediaSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
