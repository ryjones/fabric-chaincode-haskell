{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE DeriveAnyClass    #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE GADTs             #-}
{-# LANGUAGE TypeApplications  #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- | Generated by Haskell protocol buffer compiler. DO NOT EDIT!
module Peer.ProposalResponse where
import qualified Prelude as Hs
import qualified Proto3.Suite.Class as HsProtobuf
import qualified Proto3.Suite.DotProto as HsProtobuf
import qualified Proto3.Suite.JSONPB as HsJSONPB
import Proto3.Suite.JSONPB ((.=), (.:))
import qualified Proto3.Suite.Types as HsProtobuf
import qualified Proto3.Wire as HsProtobuf
import qualified Control.Applicative as Hs
import Control.Applicative ((<*>), (<|>), (<$>))
import qualified Control.DeepSeq as Hs
import qualified Control.Monad as Hs
import qualified Data.ByteString as Hs
import qualified Data.Coerce as Hs
import qualified Data.Int as Hs (Int16, Int32, Int64)
import qualified Data.List.NonEmpty as Hs (NonEmpty(..))
import qualified Data.Map as Hs (Map, mapKeysMonotonic)
import qualified Data.Proxy as Proxy
import qualified Data.String as Hs (fromString)
import qualified Data.Text.Lazy as Hs (Text)
import qualified Data.Vector as Hs (Vector)
import qualified Data.Word as Hs (Word16, Word32, Word64)
import qualified GHC.Enum as Hs
import qualified GHC.Generics as Hs
import qualified Unsafe.Coerce as Hs
import qualified Google.Protobuf.Timestamp
 
data ProposalResponse = ProposalResponse{proposalResponseVersion ::
                                         Hs.Int32,
                                         proposalResponseTimestamp ::
                                         Hs.Maybe Google.Protobuf.Timestamp.Timestamp,
                                         proposalResponseResponse ::
                                         Hs.Maybe Peer.ProposalResponse.Response,
                                         proposalResponsePayload :: Hs.ByteString,
                                         proposalResponseEndorsement ::
                                         Hs.Maybe Peer.ProposalResponse.Endorsement}
                      deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named ProposalResponse where
        nameOf _ = (Hs.fromString "ProposalResponse")
 
instance HsProtobuf.HasDefault ProposalResponse
 
instance HsProtobuf.Message ProposalResponse where
        encodeMessage _
          ProposalResponse{proposalResponseVersion = proposalResponseVersion,
                           proposalResponseTimestamp = proposalResponseTimestamp,
                           proposalResponseResponse = proposalResponseResponse,
                           proposalResponsePayload = proposalResponsePayload,
                           proposalResponseEndorsement = proposalResponseEndorsement}
          = (Hs.mconcat
               [(HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                   proposalResponseVersion),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 2)
                   (Hs.coerce @(Hs.Maybe Google.Protobuf.Timestamp.Timestamp)
                      @(HsProtobuf.Nested Google.Protobuf.Timestamp.Timestamp)
                      proposalResponseTimestamp)),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 4)
                   (Hs.coerce @(Hs.Maybe Peer.ProposalResponse.Response)
                      @(HsProtobuf.Nested Peer.ProposalResponse.Response)
                      proposalResponseResponse)),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 5)
                   proposalResponsePayload),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 6)
                   (Hs.coerce @(Hs.Maybe Peer.ProposalResponse.Endorsement)
                      @(HsProtobuf.Nested Peer.ProposalResponse.Endorsement)
                      proposalResponseEndorsement))])
        decodeMessage _
          = (Hs.pure ProposalResponse) <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 1))
              <*>
              (Hs.coerce
                 @(_ (HsProtobuf.Nested Google.Protobuf.Timestamp.Timestamp))
                 @(_ (Hs.Maybe Google.Protobuf.Timestamp.Timestamp))
                 (HsProtobuf.at HsProtobuf.decodeMessageField
                    (HsProtobuf.FieldNumber 2)))
              <*>
              (Hs.coerce @(_ (HsProtobuf.Nested Peer.ProposalResponse.Response))
                 @(_ (Hs.Maybe Peer.ProposalResponse.Response))
                 (HsProtobuf.at HsProtobuf.decodeMessageField
                    (HsProtobuf.FieldNumber 4)))
              <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 5))
              <*>
              (Hs.coerce
                 @(_ (HsProtobuf.Nested Peer.ProposalResponse.Endorsement))
                 @(_ (Hs.Maybe Peer.ProposalResponse.Endorsement))
                 (HsProtobuf.at HsProtobuf.decodeMessageField
                    (HsProtobuf.FieldNumber 6)))
        dotProto _
          = [(HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 1)
                (HsProtobuf.Prim HsProtobuf.Int32)
                (HsProtobuf.Single "version")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 2)
                (HsProtobuf.Prim
                   (HsProtobuf.Named
                      (HsProtobuf.Dots
                         (HsProtobuf.Path ("google" Hs.:| ["protobuf", "Timestamp"])))))
                (HsProtobuf.Single "timestamp")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 4)
                (HsProtobuf.Prim (HsProtobuf.Named (HsProtobuf.Single "Response")))
                (HsProtobuf.Single "response")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 5)
                (HsProtobuf.Prim HsProtobuf.Bytes)
                (HsProtobuf.Single "payload")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 6)
                (HsProtobuf.Prim
                   (HsProtobuf.Named (HsProtobuf.Single "Endorsement")))
                (HsProtobuf.Single "endorsement")
                []
                "")]
 
instance HsJSONPB.ToJSONPB ProposalResponse where
        toJSONPB (ProposalResponse f1 f2 f4 f5 f6)
          = (HsJSONPB.object
               ["version" .= f1, "timestamp" .= f2, "response" .= f4,
                "payload" .= f5, "endorsement" .= f6])
        toEncodingPB (ProposalResponse f1 f2 f4 f5 f6)
          = (HsJSONPB.pairs
               ["version" .= f1, "timestamp" .= f2, "response" .= f4,
                "payload" .= f5, "endorsement" .= f6])
 
instance HsJSONPB.FromJSONPB ProposalResponse where
        parseJSONPB
          = (HsJSONPB.withObject "ProposalResponse"
               (\ obj ->
                  (Hs.pure ProposalResponse) <*> obj .: "version" <*>
                    obj .: "timestamp"
                    <*> obj .: "response"
                    <*> obj .: "payload"
                    <*> obj .: "endorsement"))
 
instance HsJSONPB.ToJSON ProposalResponse where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON ProposalResponse where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsJSONPB.ToSchema ProposalResponse where
        declareNamedSchema _
          = do let declare_version = HsJSONPB.declareSchemaRef
               proposalResponseVersion <- declare_version Proxy.Proxy
               let declare_timestamp = HsJSONPB.declareSchemaRef
               proposalResponseTimestamp <- declare_timestamp Proxy.Proxy
               let declare_response = HsJSONPB.declareSchemaRef
               proposalResponseResponse <- declare_response Proxy.Proxy
               let declare_payload = HsJSONPB.declareSchemaRef
               proposalResponsePayload <- declare_payload Proxy.Proxy
               let declare_endorsement = HsJSONPB.declareSchemaRef
               proposalResponseEndorsement <- declare_endorsement Proxy.Proxy
               let _ = Hs.pure ProposalResponse <*>
                         HsJSONPB.asProxy declare_version
                         <*> HsJSONPB.asProxy declare_timestamp
                         <*> HsJSONPB.asProxy declare_response
                         <*> HsJSONPB.asProxy declare_payload
                         <*> HsJSONPB.asProxy declare_endorsement
               Hs.return
                 (HsJSONPB.NamedSchema{HsJSONPB._namedSchemaName =
                                         Hs.Just "ProposalResponse",
                                       HsJSONPB._namedSchemaSchema =
                                         Hs.mempty{HsJSONPB._schemaParamSchema =
                                                     Hs.mempty{HsJSONPB._paramSchemaType =
                                                                 HsJSONPB.SwaggerObject},
                                                   HsJSONPB._schemaProperties =
                                                     HsJSONPB.insOrdFromList
                                                       [("version", proposalResponseVersion),
                                                        ("timestamp", proposalResponseTimestamp),
                                                        ("response", proposalResponseResponse),
                                                        ("payload", proposalResponsePayload),
                                                        ("endorsement",
                                                         proposalResponseEndorsement)]}})
 
data Response = Response{responseStatus :: Hs.Int32,
                         responseMessage :: Hs.Text, responsePayload :: Hs.ByteString}
              deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named Response where
        nameOf _ = (Hs.fromString "Response")
 
instance HsProtobuf.HasDefault Response
 
instance HsProtobuf.Message Response where
        encodeMessage _
          Response{responseStatus = responseStatus,
                   responseMessage = responseMessage,
                   responsePayload = responsePayload}
          = (Hs.mconcat
               [(HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                   responseStatus),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 2)
                   responseMessage),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 3)
                   responsePayload)])
        decodeMessage _
          = (Hs.pure Response) <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 1))
              <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 2))
              <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 3))
        dotProto _
          = [(HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 1)
                (HsProtobuf.Prim HsProtobuf.Int32)
                (HsProtobuf.Single "status")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 2)
                (HsProtobuf.Prim HsProtobuf.String)
                (HsProtobuf.Single "message")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 3)
                (HsProtobuf.Prim HsProtobuf.Bytes)
                (HsProtobuf.Single "payload")
                []
                "")]
 
instance HsJSONPB.ToJSONPB Response where
        toJSONPB (Response f1 f2 f3)
          = (HsJSONPB.object
               ["status" .= f1, "message" .= f2, "payload" .= f3])
        toEncodingPB (Response f1 f2 f3)
          = (HsJSONPB.pairs
               ["status" .= f1, "message" .= f2, "payload" .= f3])
 
instance HsJSONPB.FromJSONPB Response where
        parseJSONPB
          = (HsJSONPB.withObject "Response"
               (\ obj ->
                  (Hs.pure Response) <*> obj .: "status" <*> obj .: "message" <*>
                    obj .: "payload"))
 
instance HsJSONPB.ToJSON Response where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON Response where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsJSONPB.ToSchema Response where
        declareNamedSchema _
          = do let declare_status = HsJSONPB.declareSchemaRef
               responseStatus <- declare_status Proxy.Proxy
               let declare_message = HsJSONPB.declareSchemaRef
               responseMessage <- declare_message Proxy.Proxy
               let declare_payload = HsJSONPB.declareSchemaRef
               responsePayload <- declare_payload Proxy.Proxy
               let _ = Hs.pure Response <*> HsJSONPB.asProxy declare_status <*>
                         HsJSONPB.asProxy declare_message
                         <*> HsJSONPB.asProxy declare_payload
               Hs.return
                 (HsJSONPB.NamedSchema{HsJSONPB._namedSchemaName =
                                         Hs.Just "Response",
                                       HsJSONPB._namedSchemaSchema =
                                         Hs.mempty{HsJSONPB._schemaParamSchema =
                                                     Hs.mempty{HsJSONPB._paramSchemaType =
                                                                 HsJSONPB.SwaggerObject},
                                                   HsJSONPB._schemaProperties =
                                                     HsJSONPB.insOrdFromList
                                                       [("status", responseStatus),
                                                        ("message", responseMessage),
                                                        ("payload", responsePayload)]}})
 
data ProposalResponsePayload = ProposalResponsePayload{proposalResponsePayloadProposalHash
                                                       :: Hs.ByteString,
                                                       proposalResponsePayloadExtension ::
                                                       Hs.ByteString}
                             deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named ProposalResponsePayload where
        nameOf _ = (Hs.fromString "ProposalResponsePayload")
 
instance HsProtobuf.HasDefault ProposalResponsePayload
 
instance HsProtobuf.Message ProposalResponsePayload where
        encodeMessage _
          ProposalResponsePayload{proposalResponsePayloadProposalHash =
                                    proposalResponsePayloadProposalHash,
                                  proposalResponsePayloadExtension =
                                    proposalResponsePayloadExtension}
          = (Hs.mconcat
               [(HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                   proposalResponsePayloadProposalHash),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 2)
                   proposalResponsePayloadExtension)])
        decodeMessage _
          = (Hs.pure ProposalResponsePayload) <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 1))
              <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 2))
        dotProto _
          = [(HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 1)
                (HsProtobuf.Prim HsProtobuf.Bytes)
                (HsProtobuf.Single "proposal_hash")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 2)
                (HsProtobuf.Prim HsProtobuf.Bytes)
                (HsProtobuf.Single "extension")
                []
                "")]
 
instance HsJSONPB.ToJSONPB ProposalResponsePayload where
        toJSONPB (ProposalResponsePayload f1 f2)
          = (HsJSONPB.object ["proposal_hash" .= f1, "extension" .= f2])
        toEncodingPB (ProposalResponsePayload f1 f2)
          = (HsJSONPB.pairs ["proposal_hash" .= f1, "extension" .= f2])
 
instance HsJSONPB.FromJSONPB ProposalResponsePayload where
        parseJSONPB
          = (HsJSONPB.withObject "ProposalResponsePayload"
               (\ obj ->
                  (Hs.pure ProposalResponsePayload) <*> obj .: "proposal_hash" <*>
                    obj .: "extension"))
 
instance HsJSONPB.ToJSON ProposalResponsePayload where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON ProposalResponsePayload where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsJSONPB.ToSchema ProposalResponsePayload where
        declareNamedSchema _
          = do let declare_proposal_hash = HsJSONPB.declareSchemaRef
               proposalResponsePayloadProposalHash <- declare_proposal_hash
                                                        Proxy.Proxy
               let declare_extension = HsJSONPB.declareSchemaRef
               proposalResponsePayloadExtension <- declare_extension Proxy.Proxy
               let _ = Hs.pure ProposalResponsePayload <*>
                         HsJSONPB.asProxy declare_proposal_hash
                         <*> HsJSONPB.asProxy declare_extension
               Hs.return
                 (HsJSONPB.NamedSchema{HsJSONPB._namedSchemaName =
                                         Hs.Just "ProposalResponsePayload",
                                       HsJSONPB._namedSchemaSchema =
                                         Hs.mempty{HsJSONPB._schemaParamSchema =
                                                     Hs.mempty{HsJSONPB._paramSchemaType =
                                                                 HsJSONPB.SwaggerObject},
                                                   HsJSONPB._schemaProperties =
                                                     HsJSONPB.insOrdFromList
                                                       [("proposal_hash",
                                                         proposalResponsePayloadProposalHash),
                                                        ("extension",
                                                         proposalResponsePayloadExtension)]}})
 
data Endorsement = Endorsement{endorsementEndorser ::
                               Hs.ByteString,
                               endorsementSignature :: Hs.ByteString}
                 deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named Endorsement where
        nameOf _ = (Hs.fromString "Endorsement")
 
instance HsProtobuf.HasDefault Endorsement
 
instance HsProtobuf.Message Endorsement where
        encodeMessage _
          Endorsement{endorsementEndorser = endorsementEndorser,
                      endorsementSignature = endorsementSignature}
          = (Hs.mconcat
               [(HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                   endorsementEndorser),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 2)
                   endorsementSignature)])
        decodeMessage _
          = (Hs.pure Endorsement) <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 1))
              <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 2))
        dotProto _
          = [(HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 1)
                (HsProtobuf.Prim HsProtobuf.Bytes)
                (HsProtobuf.Single "endorser")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 2)
                (HsProtobuf.Prim HsProtobuf.Bytes)
                (HsProtobuf.Single "signature")
                []
                "")]
 
instance HsJSONPB.ToJSONPB Endorsement where
        toJSONPB (Endorsement f1 f2)
          = (HsJSONPB.object ["endorser" .= f1, "signature" .= f2])
        toEncodingPB (Endorsement f1 f2)
          = (HsJSONPB.pairs ["endorser" .= f1, "signature" .= f2])
 
instance HsJSONPB.FromJSONPB Endorsement where
        parseJSONPB
          = (HsJSONPB.withObject "Endorsement"
               (\ obj ->
                  (Hs.pure Endorsement) <*> obj .: "endorser" <*>
                    obj .: "signature"))
 
instance HsJSONPB.ToJSON Endorsement where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON Endorsement where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsJSONPB.ToSchema Endorsement where
        declareNamedSchema _
          = do let declare_endorser = HsJSONPB.declareSchemaRef
               endorsementEndorser <- declare_endorser Proxy.Proxy
               let declare_signature = HsJSONPB.declareSchemaRef
               endorsementSignature <- declare_signature Proxy.Proxy
               let _ = Hs.pure Endorsement <*> HsJSONPB.asProxy declare_endorser
                         <*> HsJSONPB.asProxy declare_signature
               Hs.return
                 (HsJSONPB.NamedSchema{HsJSONPB._namedSchemaName =
                                         Hs.Just "Endorsement",
                                       HsJSONPB._namedSchemaSchema =
                                         Hs.mempty{HsJSONPB._schemaParamSchema =
                                                     Hs.mempty{HsJSONPB._paramSchemaType =
                                                                 HsJSONPB.SwaggerObject},
                                                   HsJSONPB._schemaProperties =
                                                     HsJSONPB.insOrdFromList
                                                       [("endorser", endorsementEndorser),
                                                        ("signature", endorsementSignature)]}})