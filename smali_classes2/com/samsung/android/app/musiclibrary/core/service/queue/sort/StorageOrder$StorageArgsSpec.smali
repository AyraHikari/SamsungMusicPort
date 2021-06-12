.class Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageArgsSpec"
.end annotation


# static fields
.field private static final DEFAULT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string v1, "cp_attrs"

    .line 130
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;->uri:Landroid/net/Uri;

    .line 136
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;->projection:[Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;->selection:Ljava/lang/String;

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;->selectionArgs:[Ljava/lang/String;

    const-string p1, "cp_attrs, title COLLATE LOCALIZED "

    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/StorageOrder$StorageArgsSpec;->orderBy:Ljava/lang/String;

    return-void
.end method
