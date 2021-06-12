.class Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleQueryArgsSpec"
.end annotation


# static fields
.field private static final DEFAULT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string v1, "title"

    .line 124
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->uri:Landroid/net/Uri;

    .line 131
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->projection:[Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->selection:Ljava/lang/String;

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->selectionArgs:[Ljava/lang/String;

    const-string p1, "title COLLATE LOCALIZED "

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->orderBy:Ljava/lang/String;

    return-void
.end method
