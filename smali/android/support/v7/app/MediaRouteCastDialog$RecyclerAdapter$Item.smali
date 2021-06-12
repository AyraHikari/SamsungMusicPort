.class Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field private final mData:Ljava/lang/Object;

.field private final mType:I

.field final synthetic this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;Ljava/lang/Object;I)V
    .locals 0

    .line 676
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p2, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    .line 678
    iput p3, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;->mType:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 682
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 686
    iget v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;->mType:I

    return v0
.end method
